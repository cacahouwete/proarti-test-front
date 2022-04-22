<template>
  <div id="head-status">
    <div class="wrapper-head">
      <img id="back1" src="~/assets/img/about/greekStatue_head1.png" alt=""/>
      <img id="back2" src="~/assets/img/about/greekStatue_head2.png" alt=""/>
      <img id="back3" src="~/assets/img/about/greekStatue_head3.png" alt=""/>
      <div class="content-title">
        <h2> michelangelo</h2>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Head"
}
</script>

<style scoped>
@media screen and (min-width: 300px) {
  #head-status {
    position: relative;
    height: 50vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  #head-status .wrapper-head {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: flex-start;
  }

  #head-status .wrapper-head .content-title {
    background-color: var(--color-black);
    padding: 1.2rem 2.2rem;
    width: 300px;
    height: 70px;
    text-align: center;
    color: var(--color-white);
    text-transform: uppercase;
  }
}

@media screen and (min-width: 600px) {
  #head-status .wrapper-head {
    width: 60%;
  }
}

@media screen and (min-width: 1500px) {
  #head-status .wrapper-head {
    width: 55%;
  }
}

</style>
