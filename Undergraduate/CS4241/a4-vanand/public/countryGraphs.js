
// Adapted from d3 example graph gallery
function ChinaData () {
  const margin = { top: 10, right: 30, bottom: 30, left: 60 }
  const width = 460 - margin.left - margin.right
  const height = 300 - margin.top - margin.bottom

  const svg = d3.select('#ChinaGraph')
    .append('svg')
    .attr('width', width + margin.left + margin.right)
    .attr('height', height + margin.top + margin.bottom)
    .append('g')
    .attr('transform',
      'translate(' + margin.left + ',' + margin.top + ')')

  d3.csv('chinaPop.csv',

    function (d) {
      return { date: d3.timeParse('%Y')(d.date), value: d.value / 100000000 }
    },

    function (data) {
      const x = d3.scaleTime()
        .domain(d3.extent(data, function (d) { return d.date }))
        .range([0, width])
      const xAxis = svg.append('g')
        .attr('transform', 'translate(0,' + height + ')')
        .call(d3.axisBottom(x))

      const y = d3.scaleLinear()
        .domain([0, d3.max(data, function (d) { return +d.value })])
        .range([height, 0])
      const yAxis = svg.append('g')
        .call(d3.axisLeft(y))

      const clip = svg.append('defs').append('svg:clipPath')
        .attr('id', 'clip')
        .append('svg:rect')
        .attr('width', width)
        .attr('height', height)
        .attr('x', 0)
        .attr('y', 0)

      const brush = d3.brushX()
        .extent([[0, 0], [width, height]])
        .on('end', updateChart)

      const line = svg.append('g')
        .attr('clip-path', 'url(#clip)')

      line.append('path')
        .datum(data)
        .attr('class', 'line')
        .attr('fill', 'none')
        .attr('stroke', 'purple')
        .attr('stroke-width', 1.5)
        .attr('d', d3.line()
          .x(function (d) { return x(d.date) })
          .y(function (d) { return y(d.value) })
        )

      line
        .append('g')
        .attr('class', 'brush')
        .call(brush)

      let idleTimeout
      function idled () { idleTimeout = null }

      function updateChart () {
        const extent = d3.event.selection

        if (!extent) {
          if (!idleTimeout) return idleTimeout = setTimeout(idled, 350)
          x.domain([4, 8])
        } else {
          x.domain([x.invert(extent[0]), x.invert(extent[1])])
          line.select('.brush').call(brush.move, null)
        }

        xAxis.transition().duration(1000).call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .duration(1000)
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      }

      svg.on('dblclick', function () {
        x.domain(d3.extent(data, function (d) { return d.date }))
        xAxis.transition().call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      })
    })
}

function IndiaData () {
  const margin = { top: 10, right: 30, bottom: 30, left: 60 }
  const width = 460 - margin.left - margin.right
  const height = 300 - margin.top - margin.bottom

  const svg = d3.select('#IndiaGraph')
    .append('svg')
    .attr('width', width + margin.left + margin.right)
    .attr('height', height + margin.top + margin.bottom)
    .append('g')
    .attr('transform',
      'translate(' + margin.left + ',' + margin.top + ')')

  d3.csv('indiaPop.csv',

    function (d) {
      return { date: d3.timeParse('%Y')(d.date), value: d.value / 100000000 }
    },

    function (data) {
      const x = d3.scaleTime()
        .domain(d3.extent(data, function (d) { return d.date }))
        .range([0, width])
      const xAxis = svg.append('g')
        .attr('transform', 'translate(0,' + height + ')')
        .call(d3.axisBottom(x))

      const y = d3.scaleLinear()
        .domain([0, d3.max(data, function (d) { return +d.value })])
        .range([height, 0])
      const yAxis = svg.append('g')
        .call(d3.axisLeft(y))

      const clip = svg.append('defs').append('svg:clipPath')
        .attr('id', 'clip')
        .append('svg:rect')
        .attr('width', width)
        .attr('height', height)
        .attr('x', 0)
        .attr('y', 0)

      const brush = d3.brushX()
        .extent([[0, 0], [width, height]])
        .on('end', updateChart)

      const line = svg.append('g')
        .attr('clip-path', 'url(#clip)')

      line.append('path')
        .datum(data)
        .attr('class', 'line')
        .attr('fill', 'none')
        .attr('stroke', '#C24FA1')
        .attr('stroke-width', 1.5)
        .attr('d', d3.line()
          .x(function (d) { return x(d.date) })
          .y(function (d) { return y(d.value) })
        )

      line
        .append('g')
        .attr('class', 'brush')
        .call(brush)

      let idleTimeout

      function idled () { idleTimeout = null }

      function updateChart () {
        const extent = d3.event.selection

        if (!extent) {
          if (!idleTimeout) return idleTimeout = setTimeout(idled, 350)
          x.domain([4, 8])
        } else {
          x.domain([x.invert(extent[0]), x.invert(extent[1])])
          line.select('.brush').call(brush.move, null)
        }

        xAxis.transition().duration(1000).call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .duration(1000)
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      }

      svg.on('dblclick', function () {
        x.domain(d3.extent(data, function (d) { return d.date }))
        xAxis.transition().call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      })
    })
}

function USAData () {
  const margin = { top: 10, right: 30, bottom: 30, left: 60 }
  const width = 460 - margin.left - margin.right
  const height = 300 - margin.top - margin.bottom

  const svg = d3.select('#USAGraph')
    .append('svg')
    .attr('width', width + margin.left + margin.right)
    .attr('height', height + margin.top + margin.bottom)
    .append('g')
    .attr('transform',
      'translate(' + margin.left + ',' + margin.top + ')')

  d3.csv('usaPop.csv',

    function (d) {
      return { date: d3.timeParse('%Y')(d.date), value: d.value / 10000000 }
    },

    function (data) {
      const x = d3.scaleTime()
        .domain(d3.extent(data, function (d) { return d.date }))
        .range([0, width])
      const xAxis = svg.append('g')
        .attr('transform', 'translate(0,' + height + ')')
        .call(d3.axisBottom(x))

      const y = d3.scaleLinear()
        .domain([0, d3.max(data, function (d) { return +d.value })])
        .range([height, 0])
      const yAxis = svg.append('g')
        .call(d3.axisLeft(y))

      const clip = svg.append('defs').append('svg:clipPath')
        .attr('id', 'clip')
        .append('svg:rect')
        .attr('width', width)
        .attr('height', height)
        .attr('x', 0)
        .attr('y', 0)

      const brush = d3.brushX()
        .extent([[0, 0], [width, height]])
        .on('end', updateChart)

      const line = svg.append('g')
        .attr('clip-path', 'url(#clip)')

      line.append('path')
        .datum(data)
        .attr('class', 'line')
        .attr('fill', 'none')
        .attr('stroke', '#f76d61')
        .attr('stroke-width', 1.5)
        .attr('d', d3.line()
          .x(function (d) { return x(d.date) })
          .y(function (d) { return y(d.value) })
        )

      line
        .append('g')
        .attr('class', 'brush')
        .call(brush)

      let idleTimeout
      function idled () { idleTimeout = null }

      function updateChart () {
        const extent = d3.event.selection

        if (!extent) {
          if (!idleTimeout) return idleTimeout = setTimeout(idled, 350) // This allows to wait a little bit
          x.domain([4, 8])
        } else {
          x.domain([x.invert(extent[0]), x.invert(extent[1])])
          line.select('.brush').call(brush.move, null)
        }

        xAxis.transition().duration(1000).call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .duration(1000)
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      }

      svg.on('dblclick', function () {
        x.domain(d3.extent(data, function (d) { return d.date }))
        xAxis.transition().call(d3.axisBottom(x))
        line
          .select('.line')
          .transition()
          .attr('d', d3.line()
            .x(function (d) { return x(d.date) })
            .y(function (d) { return y(d.value) })
          )
      })
    })
}

export { ChinaData, IndiaData, USAData }
