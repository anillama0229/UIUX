package ui.ux

class IndexController {

    def index() {
        def claimsMapArray=[]

        def claimsMap = [claimsName: "Medical Claims Paid", payment: "20978", benchmark: "20000", className: "info"]
        claimsMap.put("difference", (Integer.parseInt(claimsMap.get("payment"))-Integer.parseInt(claimsMap.get("benchmark"))).toString())
        claimsMapArray.add(claimsMap)

        claimsMap = [claimsName: "Pharmacy Claims Paid", payment: "25740", benchmark: "30000", className: "success"]
        claimsMap.put("difference", (Integer.parseInt(claimsMap.get("payment"))-Integer.parseInt(claimsMap.get("benchmark"))).toString())
        claimsMapArray.add(claimsMap)

        claimsMap = [claimsName: "Dental Claims Paid", payment: "9780", benchmark: "10000", className: "danger"]
        claimsMap.put("difference", (Integer.parseInt(claimsMap.get("payment"))-Integer.parseInt(claimsMap.get("benchmark"))).toString())
        claimsMapArray.add(claimsMap)

        println "claimsMapArray = $claimsMapArray"

        [claimsMapArray: claimsMapArray]
    }
}
