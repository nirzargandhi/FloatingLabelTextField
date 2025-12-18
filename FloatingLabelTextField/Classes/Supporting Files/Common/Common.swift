//
//  Common.swift
//  FloatingLabelTextField
//
//  Created by Nirzar Gandhi on 23/09/25.
//

import Foundation
import UIKit


// MARK: - UI / Device Related Functions
func getStoryBoard(identifier: String, storyBoardName: String) -> UIViewController {
    return UIStoryboard(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier: identifier)
}

func getBottomSafeAreaHeight() -> CGFloat {
    return (UIDevice.current.hasNotch == true) ? (WINDOWSCENE?.windows.first?.safeAreaInsets.bottom ?? 0) : 0
}

// MARK: - Text Width
func getTextWidth(text: String, font: UIFont) -> CGSize {
    let size = text.size(withAttributes: [NSAttributedString.Key.font: font])
    return size
}

// MARK: - Get Table Cell
func getTableCell() -> UITableViewCell {
    let cell = UITableViewCell()
    cell.backgroundColor = .clear
    cell.selectionStyle = .none
    return cell
}
