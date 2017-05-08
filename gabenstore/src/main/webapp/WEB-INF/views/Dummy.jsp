<%@ include file="/WEB-INF/views/Header.jsp"%>
<div ng-app="myApp" ng-controller="categoryCtrl">
<input ng-model="q"  class="form-control" placeholder="Filter text" >
<div class="row">
	<div class="col-lg-3" 
		dir-paginate="meal in display | filter:q | itemsPerPage: 12 | filter:search" current-page="currentPage">{{ meal.productName }}
	</div>                
</div>

<dir-pagination-controls boundary-links="true" on-page-change="pageChangeHandler(newPageNumber)" template-url="resources/theme1/js/dirPagination.tpl.html"></dir-pagination-controls>
</div>
<script>
var app = angular.module('myApp', ['angularUtils.directives.dirPagination']);
app.controller('categoryCtrl', function($scope,$location)
{
  $scope.display=${displayProduct};
  $scope.search = location.search.substr(8).slice(0,3);
});
</script>