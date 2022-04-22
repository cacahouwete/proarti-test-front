<template>
  <div class="header">
    <div class="wrapper_img">
      <img id="logo" src="~/assets/icon/logo_.png" />
    </div>
    <div class="wrapper_links">
      <div id="btn">
        <div class="btn">
          <NuxtLink to="/">Home</NuxtLink>
        </div>
      </div>
      <div id="btn">
        <div class="btn">
          <NuxtLink to="/project">projets</NuxtLink>
        </div>
      </div>
      <div id="btn">
        <div class="btn">
          <NuxtLink to="/about">a propos</NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "TheHeader"
}
</script>

<style scoped lang="css">
  .header{
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    box-sizing: border-box;
    padding: 0 40px;
  }
  .wrapper_links{
    width: 300px;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-evenly;
  }
</style>
