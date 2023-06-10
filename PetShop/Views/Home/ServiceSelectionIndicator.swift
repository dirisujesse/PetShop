//
//  ServiceSelectionIndicator.swift
//  PetShop
//
//  Created by Dirisu on 10/06/2023.
//

import SwiftUI

struct ServiceSelectionIndicator: View {
    let service: AnimalService
    let activeService: AnimalService?
    let ontap: () -> Void
    
    init(_ service: AnimalService, _ activeService: AnimalService?, ontap: @escaping () -> Void) {
        self.service = service
        self.activeService = activeService
        self.ontap = ontap
    }

    var isActive: Bool {
        service == activeService
    }

    var bgColor: Color {
        return isActive ? .appIconPurple : .appGreyBg
    }

    var borderColor: Color {
        return isActive ? .appLightPurple : bgColor
    }

    var textColor: Color {
        return isActive ? .white : .appSecondaryText
    }

    var body: some View {
        BorderedButton(textColor: textColor, borderColor: borderColor, backgroundColor: bgColor, text: service.name, action: ontap)
    }
}

struct ServiceSelectionIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ServiceSelectionIndicator(AnimalService.consultation, AnimalService.spa) {}
    }
}
