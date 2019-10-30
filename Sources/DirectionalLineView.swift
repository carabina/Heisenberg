//
//  DirectionalLineView.swift
//  Heisenberg
//
//  Created by Emrah Korkmaz on 10/31/19.
//

import UIKit


// MARK: - Definition of DirectionalLineView
open class DirectionalLineView: UIView{
    
    var bond: LineView.BondType
    var startPoint: CGPoint
    var endPoint: CGPoint
    var color: UIColor?
    var structuralWay: StructuralWay
    var itemSize: Int
    
    override public func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let size = 2 * self.itemSize
        
        context?.setLineWidth(3)
        context?.setStrokeColor(color?.cgColor ?? UIColor.black.cgColor)
        
        
        switch bond{
        case .SingleBond:
            if structuralWay == .next {
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .upward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .downward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .crossUpForward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .crossDownForward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .crossDownBackward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            } else if structuralWay == .crossUpBackward {
                context?.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
            }
                
            else { return }
            
            
            
        case .DoubleBond:
            
            if structuralWay == .next {
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y - 3.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y - 3.0))
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y + 3.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y + 3.0))
                
            } else if structuralWay == .upward {
                context?.move(to: CGPoint(x: startPoint.x - 3.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 3.0, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x + 3.0, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 3.0, y: endPoint.y))
            } else if structuralWay == .downward {
                context?.move(to: CGPoint(x: startPoint.x - 3.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 3.0, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x + 3.0, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 3.0, y: endPoint.y))
            } else if structuralWay == .crossUpForward {
                context?.move(to: CGPoint(x: startPoint.x - 1.0 , y: startPoint.y - 1.0))
                context?.addLine(to: CGPoint(x: endPoint.x - 1.0, y: endPoint.y - 1.0))
                
                context?.move(to: CGPoint(x: size / 2 , y: size / 2))
                context?.addLine(to: CGPoint(x: size / 2 + size / 4, y: size / 2 + size / 4))
                
                context?.move(to: CGPoint(x: size / 2 + 5, y: size / 2 - 5))
                context?.addLine(to: CGPoint(x: size / 2 + size / 4 + 5, y: size / 2 + size / 4 - 5))
                
            } else if structuralWay == .crossDownForward {
                context?.move(to: CGPoint(x: startPoint.x - 5.0  , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 5.0, y: endPoint.y))
                
                context?.move(to: CGPoint(x: size / 2 - itemSize / 2, y: size / 2 + itemSize / 2))
                context?.addLine(to: CGPoint(x: size / 2 - 5, y: size / 2 + 5))
                
                context?.move(to: CGPoint(x: size / 2 - itemSize / 2 + 5, y: size / 2 + itemSize / 2 + 5))
                context?.addLine(to: CGPoint(x: size / 2, y: size / 2 + 10))
            } else if structuralWay == .crossDownBackward {
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y + 2.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y + 2.0))
                
                context?.move(to: CGPoint(x: size / 2 - 10, y: size / 2 - 10))
                context?.addLine(to: CGPoint(x: size / 2 + 10 , y: size / 2 + 10))
                
                context?.move(to: CGPoint(x: size / 2 - 5, y: size / 2 - 15))
                context?.addLine(to: CGPoint(x: size / 2 + 15 , y: size / 2 + 5))
                
            } else if structuralWay == .crossUpBackward {
                context?.move(to: CGPoint(x: startPoint.x + 4.0, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 4.0, y: endPoint.y))
                    
                context?.move(to: CGPoint(x: size / 2 + itemSize / 2 - 5 , y: size / 2 - itemSize / 2 - 5))
                context?.addLine(to: CGPoint(x: size / 2, y: size / 2 - 10))
                
                context?.move(to: CGPoint(x: size / 2 + itemSize / 2 , y: size / 2 - itemSize / 2))
                context?.addLine(to: CGPoint(x: size / 2 + 5, y: size / 2 - 5))
            }
                
            else { return }
            
        case .TripleBond:
            
            if structuralWay == .next {
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y - 5.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y - 5.0))
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y + 5.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y + 5.0))
            } else if structuralWay == .upward {
                
                context?.move(to: CGPoint(x: startPoint.x - 5.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 5.0, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x + 5.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 5.0, y: endPoint.y))
                
            } else if structuralWay == .downward {
                context?.move(to: CGPoint(x: startPoint.x - 5.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 5.0, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y))
                
                context?.move(to: CGPoint(x: startPoint.x + 5.0 , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 5.0, y: endPoint.y))
                
            } else if structuralWay == .crossUpForward {
                context?.move(to: CGPoint(x: startPoint.x - 1.0 , y: startPoint.y - 1.0))
                context?.addLine(to: CGPoint(x: endPoint.x - 1.0, y: endPoint.y - 1.0))
                
                context?.move(to: CGPoint(x: size / 2 , y: size / 2))
                context?.addLine(to: CGPoint(x: size / 2 + size / 4, y: size / 2 + size / 4))
                
                context?.move(to: CGPoint(x: size / 2 + 5, y: size / 2 - 5))
                context?.addLine(to: CGPoint(x: size / 2 + size / 4 + 5, y: size / 2 + size / 4 - 5))
                
                context?.move(to: CGPoint(x: size / 2 + 10, y: size / 2 - 10))
                context?.addLine(to: CGPoint(x: size / 2 + size / 4 + 10, y: size / 2 + size / 4 - 10))

            } else if structuralWay == .crossDownForward {
                
                context?.move(to: CGPoint(x: startPoint.x - 5.0  , y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x - 5.0, y: endPoint.y))
                    
                context?.move(to: CGPoint(x: size / 2 - itemSize / 2, y: size / 2 + itemSize / 2))
                context?.addLine(to: CGPoint(x: size / 2 - 5, y: size / 2 + 5))
                
                context?.move(to: CGPoint(x: size / 2 - itemSize / 2 + 5, y: size / 2 + itemSize / 2 + 5))
                context?.addLine(to: CGPoint(x: size / 2, y: size / 2 + 10))
                
                context?.move(to: CGPoint(x: size / 2 - itemSize / 2 + 10, y: size / 2 + itemSize / 2 + 10))
                context?.addLine(to: CGPoint(x: size / 2 + 5, y: size / 2 + 15))

                
            } else if structuralWay == .crossDownBackward {
                
                context?.move(to: CGPoint(x: startPoint.x , y: startPoint.y + 2.0))
                context?.addLine(to: CGPoint(x: endPoint.x, y: endPoint.y + 2.0))
                
                context?.move(to: CGPoint(x: size / 2 - 10, y: size / 2 - 10))
                context?.addLine(to: CGPoint(x: size / 2 + 10 , y: size / 2 + 10))
                
                context?.move(to: CGPoint(x: size / 2 - 5, y: size / 2 - 15))
                context?.addLine(to: CGPoint(x: size / 2 + 15 , y: size / 2 + 5))
                
                context?.move(to: CGPoint(x: size / 2, y: size / 2 - 20))
                context?.addLine(to: CGPoint(x: size / 2 + 20 , y: size / 2))
                
            } else if structuralWay == .crossUpBackward {
                
                context?.move(to: CGPoint(x: startPoint.x + 4.0, y: startPoint.y))
                context?.addLine(to: CGPoint(x: endPoint.x + 4.0, y: endPoint.y))
                    
                context?.move(to: CGPoint(x: size / 2 + itemSize / 2 - 5 , y: size / 2 - itemSize / 2 - 5))
                context?.addLine(to: CGPoint(x: size / 2, y: size / 2 - 10))
                
                context?.move(to: CGPoint(x: size / 2 + itemSize / 2 , y: size / 2 - itemSize / 2))
                context?.addLine(to: CGPoint(x: size / 2 + 5, y: size / 2 - 5))
                
                context?.move(to: CGPoint(x: size / 2 + itemSize / 2 + 5 , y: size / 2 - itemSize / 2 + 5))
                context?.addLine(to: CGPoint(x: size / 2 + 10, y: size / 2 ))
            }
                
                
            else { return }
            
        }
        
        context?.strokePath()
    }
    
    
    override init(frame: CGRect) {
        self.startPoint = CGPoint(x: 0, y: 0)
        self.endPoint = CGPoint(x: 0, y: 0)
        self.color = UIColor.black
        self.bond = .SingleBond
        self.structuralWay = .next
        self.itemSize = 40

        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blue
    }
    
    init(frame: CGRect, start: CGPoint, end: CGPoint? = nil, lineColor: UIColor?, lineBond: LineView.BondType, structure: StructuralWay, sizeOfItem: Int){
        startPoint = start
        endPoint = end ?? CGPoint(x: 0, y: 0)
        color = lineColor
        bond = lineBond
        structuralWay = structure
        itemSize = sizeOfItem
        
        super.init(frame: frame)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

