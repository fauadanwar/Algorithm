
let data = [
    ["id": "MR0001",  "parentid": nil],//1
    ["id": "MR0002",  "parentid": "MR0001"],//2
    ["id": "MR0003",  "parentid": "MR0002"],//3
    ["id": "MR0004",  "parentid": "MR0003"],//4
    ["id": "MR0005",  "parentid": "MR0002"],//5
    ["id": "MR0006",  "parentid": nil],//6
    ["id": "MR0007",  "parentid": "MR0001"],//7
    ["id": "MR0008",  "parentid": nil],//8
    ["id": "MR0009",  "parentid": "MR0006"],//9
    ["id": "MR0010",  "parentid": "MR0007"]//10
]

//print the data in the following format
//1. MR0001
//1.1 MR0002
//1.1.1 MR0003
//1.1.1.1 MR0004
//1.1.2 MR0005
//1.2 MR0007
//1.2.1 MR0010

//2. MR0006
//2.1 MR0009

//3. MR0008

class Result {
    let id: String
    let parentid: String?
    var treeString: String
    var curruntNodes: Int
    
    init(id: String, parentid: String?, treeString: String = "", curruntNodes: Int = 0) {
        self.id = id
        self.parentid = parentid
        self.treeString = treeString
        self.curruntNodes = curruntNodes
    }
}
var resultArray:[Result] = []
var curruntTopParentIndex = 1
var parentDictionary = [String: Result]()
for dictionary in data
{
    if let parentID = dictionary["parentid"] as? String,
       let curruntID = dictionary["id"] as? String,
       let parentResult = parentDictionary[parentID]
    {
        var result = Result(id: curruntID, parentid: parentID)
        parentResult.curruntNodes += 1
        result.treeString = parentResult.treeString + "\(parentResult.curruntNodes)."
        resultArray.append(result)
        parentDictionary[curruntID] = result
    }
    else {
        if let curruntID = dictionary["id"] as? String {
            let result = Result(id: curruntID, parentid: nil, treeString: "\(curruntTopParentIndex).")
            resultArray.append(result)
            curruntTopParentIndex += 1
            parentDictionary[curruntID] = result
        }
    }
}
print(resultArray.sorted(by: { $0.treeString < $1.treeString }).map { $0.treeString + " " + $0.id }.joined(separator: "\n"))



