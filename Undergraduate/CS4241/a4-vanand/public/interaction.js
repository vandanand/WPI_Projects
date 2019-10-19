
const visSeven = {
  $schema: 'https://vega.github.io/schema/vega/v4.json',
  width: 350,
  height: 530,
  autosize: 'none',

  signals: [
    {
      name: 'startAngle',
      value: 0,
      bind: { input: 'range', min: 0, max: 6.29, step: 0.01 }
    },
    {
      name: 'endAngle',
      value: 6.29,
      bind: { input: 'range', min: 0, max: 6.29, step: 0.01 }
    },
    {
      name: 'padAngle',
      value: 0,
      bind: { input: 'range', min: 0, max: 0.1 }
    },
    {
      name: 'innerRadius',
      value: 0,
      bind: { input: 'range', min: 0, max: 90, step: 1 }
    },
    {
      name: 'cornerRadius',
      value: 0,
      bind: { input: 'range', min: 0, max: 10, step: 0.5 }
    },
    {
      name: 'sort',
      value: false,
      bind: { input: 'checkbox' }
    }
  ],

  data: [
    {
      name: 'table',
      values: [
        { id: 'China - 18.18%', field: 18.18 },
        { id: 'India - 16.88%', field: 16.88 },
        { id: 'United States - 4.27%', field: 4.27 },
        { id: 'Other - 60.67%', field: 60.67 }
      ],
      transform: [
        {
          type: 'pie',
          field: 'field',
          startAngle: { signal: 'startAngle' },
          endAngle: { signal: 'endAngle' },
          sort: { signal: 'sort' }
        }
      ]
    }
  ],

  scales: [
    {
      name: 'color',
      type: 'ordinal',
      domain: { data: 'table', field: 'id' },
      range: { scheme: 'Plasma' }
    }
  ],
  legends: [
    {
      stroke: 'color',
      title: 'Legend',
      orient: 'top-left',
      encode: {
        symbols: {
          update: {
            fill: { value: '' },
            strokeWidth: { value: 4 },
            size: { value: 60 }
          }
        }
      }
    }
  ],
  marks: [
    {
      type: 'arc',
      from: { data: 'table' },
      encode: {
        enter: {
          fill: { scale: 'color', field: 'id' },
          x: { signal: 'width / 2' },
          y: { signal: 'height / 2' }
        },
        update: {
          startAngle: { field: 'startAngle' },
          endAngle: { field: 'endAngle' },
          padAngle: { signal: 'padAngle' },
          innerRadius: { signal: 'innerRadius' },
          outerRadius: { signal: 'width / 2' },
          cornerRadius: { signal: 'cornerRadius' }
        }
      }
    }
  ]
}

vegaEmbed('#vis7', visSeven)

function popup () {
  'use strict'
  const myWindow = window.open('', 'MsgWindow', 'width=600,height=370')
  myWindow.document.write('<h1>Instructions</h1>' +
    "<p>Hello! Welcome to the site where you can view and compare population data overtime of some of the world's most populous places!<p> " +
    '<p>The pie chart displays the percentage of people in the world that reside in China, India, and USA versus the other countries in the world.' +
    'You can change how you view the pie chart using the various controls located underneath the graph. You can also download this new view that you create' +
    "by clicking on the 3 dots on the top right corner and clicking on 'save as PNG'.</p>" +
    '<p>The individual graphs representing each of the most populous countries in the world, China, India, and the US depict the population in these countries' +
    'overtime starting from 1960. Hover over one of these graphs and you will see your mouse turn into a plus sign. This will allow you to ' +
    'select a specific part of the graph to zoom into a particular area of the timeline. Use this to compare populations in each of the countries during a specific ' +
    'time period. Double click on the graph to go back to the original form.</p>')
}

export { visSeven, popup }
