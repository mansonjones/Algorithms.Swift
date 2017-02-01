//
//  WeightedQuickUnionUF.swift
//  Algorithms.Swift
//
//  Created by Manson Jones on 1/31/17.
//  Copyright © 2017 Manson. All rights reserved.
//

import Foundation


class WeightedQuickUnionUF {
    fileprivate var parent = [Int]()
    fileprivate var size = [Int]()
    fileprivate var count: Int
    
    init(N: Int) {
        count = N
        // Note: there's a command that initializes all the array
        // elements in one call, should probably use that instead
        // of this. or even a map or filter.
        // using reserveCapacity isn't required, but it
        // avoids intermediate reallocations
        // as the size of the array increases
        parent.reserveCapacity(N)
        size.reserveCapacity(N)
        for i in stride(from: 0, to: N, by:1) {
            // println(" i = \(i)")
            parent.append(i)
            size.append(i)
        }
    }
    // Note: count should possibly be implemented as a
    // get function (what's that thing called?)
    func find(_ p: Int) -> Int {
        validate(p)
        //
        // Not sure if this works or not
        var pTemp = p
        while (pTemp != parent[pTemp]) {
            pTemp = parent[pTemp]
        }
        return pTemp
    }
    
    fileprivate func validate(_ p: Int) {
        let N = parent.count
        if (p < 0 || p >= N) {
            print("index \(p) is not between 0 and \(N)")
        }
    }
    
    func connected(_ p: Int, q: Int) -> Bool {
        return find(p) == find(q)
    }
    
    func union(_ p: Int, q: Int) {
        let rootP = find(p)
        let rootQ = find(q)
        if (rootP == rootQ) {
            return
        }
        
        if (size[rootP] < size[rootQ]) {
            parent[rootP] = rootQ
            size[rootQ] += size[rootP]
        }
        else {
            parent[rootQ] = rootP
            size[rootP] += size[rootQ]
        }
        count -= 1
    }
}
