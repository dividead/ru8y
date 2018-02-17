var App = React.createClass({
  getInitialState: function() {
    return {res: null, hd: false, hor: false, reg: []}
  },
  search: function(title){
      var self = this
      var xmlhttp
      xmlhttp=new XMLHttpRequest()
      xmlhttp.onreadystatechange=function(){
        if (xmlhttp.readyState==4 && xmlhttp.status==200){
          var res = xmlhttp.responseText
          self.setState({res: JSON.parse(res)})
        }
      }
      xmlhttp.open("GET", "http://n0de-185304.euw1-2.nitrousbox.com/"+title, true)
      xmlhttp.send()
    },
//   checkHD: function(){
//     //var hd = this.state.res.reg(function(x){return x.name.match(/1080/)})
//     this.setState({hd: !this.state.hd}, this.swapHD)
//   },
//   swapHD: function(){
//     if(this.state.hd) {
//       this.setState({reg: this.state.reg.concat(/1080/)})
//     } else {
//       this.setState({reg: this.state.reg.splice(this.state.reg.indexOf(/1080/),1)})
//     }
//   },
//   checkHorrible: function(){
//     //var hor = this.state.res.reg(function(x){return x.name.match(/Horrible/)})
//     this.setState({hor: !this.state.hor}, this.swapHorrible)
//   },
//   swapHorrible: function(){
//     if( this.state.hor) {
//       this.setState({reg: this.state.reg.concat(/Horrible/)})
//     } else {
//       this.setState({reg: this.state.reg.splice(this.state.reg.indexOf(/Horrible/),1)})
//     }
//   },
  render: function(){
    return (
      <div >
        <Search search={this.search} />
      {this.state.res ? <Table res={this.state.res} reg={this.state.reg}/> : null}
      </div>
    )
  }
})

//         <div className="checkbox">
//           <label>
//             <input type="checkbox" onClick={this.checkHD}/> 1080p
//           </label>
//           <label>
//             <input type="checkbox" onClick={this.checkHorrible}/> [HorribleSubs]
//           </label>
//         </div>

var Search = React.createClass({
  find: function(e){
    e.preventDefault()
    var title = this.refs.title.getDOMNode().value.trim()
    if(title) this.props.search(title)
    this.refs.title.getDOMNode().value = ''
  },
  render: function(){
    return (
      <form onSubmit={this.find} >
        <input type="text" placeholder="title" ref="title" />
      </form>
    )
  }
})

// function clone(obj) {
//     if(obj == null || typeof(obj) != 'object')
//         return obj;

//     var temp = obj.constructor(); // changed

//     for(var key in obj) {
//         if(obj.hasOwnProperty(key)) {
//             temp[key] = clone(obj[key]);
//         }
//     }
//     return temp;
// }

var Table = React.createClass({
  render: function(){
//     var ori = this.props.res
//     var res = clone(ori)
//     if (this.props.reg.length > 0){
//       this.props.reg.forEach(function(x){
//         !function(x){
//             res = res.filter(function(s){
//                 return s.name.match(x)
//             })
//         }(x)
//       })
//     }
    var table = this.props.res.map(function(x){return <li key={x.tid}>{x.name} <a href={x.link}>link</a></li>})
    return (
    <ul>
      {table}
    </ul>
    )
  }
})

React.render(<App />, document.getElementById('content'))