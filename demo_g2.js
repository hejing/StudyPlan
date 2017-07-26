var G2 = require('g2')
var data = [
  {action: 'Access',visitor: 500},
  {action: 'Navigate',visitor: 400},
  {action: 'Queried',visitor: 300},
  {action: 'Order',visitor: 200},
  {action: 'Pay',visitor: 100},
];
var chart = new G2.Chart({
  id: 'c1',
  width: 800,
  height:400
}); // create the chart object
chart.source(data); // load the data source
chart.interval().position('action*visitor').color('action'); //create the detail chart
chart.render();
