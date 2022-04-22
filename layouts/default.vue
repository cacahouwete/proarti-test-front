<template>
  <div id="app">
    <TheHeader/>
    <div class="wrapper-title">
      <h1 class="title"> the</h1>
      <h2 class="title-a">gallery </h2>
    </div>
    <div id="blank"></div>
    <Nuxt/>
  </div>
</template>

<script>
export default {
  name: 'DefaultLayout'

}
</script>
<style>
.wrapper-title {
  width: 100%;
  height: 70vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.wrapper-title .title {
  margin:0 ;
  text-transform: uppercase;
  font-size: 100px;
  font-family: var(--oswald);
}

.wrapper-title .title-a {
  transition: all 0.5s;
  -webkit-text-stroke: 4px #9ae8e8;
  font-variation-settings: "wght" 900, "ital" 1;
  text-align: center;
  color: transparent;
  text-shadow: 10px 10px 0 #07bccc,
  15px 15px 0 #e601c0,
  20px 20px 0 #e9019a,
  25px 25px 0 #f40468,
  45px 45px 10px #482896;
  cursor: pointer;
  margin-top: -5.1rem;
  text-transform: uppercase;
  font-size: 20vh;
  font-family: var(--oswald);
}

.wrapper-title .title-a:hover{
  font-variation-settings: "wght" 100, "ital" 0;
  text-shadow: none;
}

</style>
