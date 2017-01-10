app.controller('deliverycontroller', ['$scope', '$http', '$state', 'IsBlank', function ($scope, $http, $state, IsBlank) {
    $scope.onInit = function () {
        //alert('all deliveries');
        $scope.SiteName = 'TEYSEER PETROL STATION (TEYSER)';

        $scope.lstProducts = [];
        $scope.lstProducts.push({ Id: 0, ProductName: 'All' });
        $scope.lstProducts.push({ Id: 1, ProductName: 'Premium 91 R' });
        $scope.lstProducts.push({ Id: 2, ProductName: 'Super 95 R' });

        $scope.selectedProduct = $scope.lstProducts[0];

        $scope.lstOrders = [];
        $scope.lstOrders.push({ OrderNum: '101316758', ProductName: 'Premium 91 R', OrderDate: '2016-12-15', Quantity: 29001, Driver: 'Abdulla Said Al Bulushi, Khalifa', Status: 1 });
        $scope.lstOrders.push({ OrderNum: '101316475', ProductName: 'Premium 91 R', OrderDate: '2016-12-12', Quantity: 30007, Driver: 'ALGANNOBI, SALIM', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316754', ProductName: 'Super 95 R', OrderDate: '2016-12-11', Quantity: 29999, Driver: 'Manea Al Agi, Naji', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316786', ProductName: 'Super 95 R', OrderDate: '2016-12-10', Quantity: 30001, Driver: 'SAAD HAMAD E ALMAHRI', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316797', ProductName: 'Premium 91 R', OrderDate: '2016-12-09', Quantity: 29998, Driver: 'Ali Hamad Al-Marri', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316694', ProductName: 'Premium 91 R', OrderDate: '2016-12-09', Quantity: 29998, Driver: 'Mohammed Tofiq Noor Khan', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316992', ProductName: 'Premium 91 R', OrderDate: '2016-12-09', Quantity: 29998, Driver: 'Ahmed, Mohamed', Status: 2 });
        $scope.lstOrders.push({ OrderNum: '101316468', ProductName: 'Premium 91 R', OrderDate: '2016-12-09', Quantity: 29998, Driver: 'ISMAIL ALI FURE', Status: 2 });
    }

    $scope.receiveOrder = function (order) {
        $state.go('receivedelivery', { order: order });
    }


}]);

app.controller('receivecontroller', ['$scope', '$http', '$stateParams', 'IsBlank', function ($scope, $http, $stateParams, IsBlank) {
    $scope.onInit = function () {
        //alert('all deliveries');
        $scope.SiteName = 'TEYSEER PETROL STATION (TEYSER)';
        $scope.validateVehicle = true;
        $scope.hasError = false;
        $scope.vehicleCode = '';
        
    }

    $scope.validate = function () {
        console.log($scope.vehicleCode);
        if ($scope.vehicleCode == 'V294D') {
            $scope.validateVehicle = false;
        }
        else {
            $scope.hasError = true;
        }
    }



}]);