<template>
  <div id="body">
    <div class="wrapper-body">
      <div class="container-title">
        <h2>distortion</h2>
      </div>
      <div class="container-img">
        <img src="~/assets/img/about/davidHead_form3.png" alt=""/>
      </div>
      <img id="back4" src="~/assets/img/about/davidHead_form1.png" alt="" />
      <img id="back5" src="~/assets/img/about/davidHead_form2.png" alt="" />
      <img id="back7" src="~/assets/img/about/davidHead_form5.png" alt="" />
      <div class="wrapper-body-hover-left">
        <div class="container-img">
          <img src="~/assets/img/about/davidHead_form3_1.png" alt=""/>
        </div>
      </div>
      <div class="wrapper-body-hover-right">
        <div class="container-img">
          <img src="~/assets/img/about/davidHead_form3_2.png" alt=""/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Body"

}

</script>

<style scoped lang="css">
@media screen and (min-width: 300px) {
  #body {
    width: 100%;
    height: 50vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  #body .wrapper-body,
  #body .wrapper-body .wrapper-body-hover-right,
  #body .wrapper-body .wrapper-body-hover-left{
    width: 300px;
    height: 100%;
    background-color: var(--color-black);
    border-radius: 8px;
    box-shadow: var(--s-box-shadow);
    position: relative;
  }

  /* wrapper hover effect */

  #body .wrapper-body .wrapper-body-hover-left,
  #body .wrapper-body .wrapper-body-hover-right{
    position: absolute;
    top:50%;
    left:50%;
    transform: translate(-50%, -50%);
    z-index: -1;
    transition: .3s ease-in-out;
  }

  #body .wrapper-body:hover .wrapper-body-hover-left{
    left: 63%;
    top: 5%;
    transform: rotate(12deg);
    transition: .3s ease-in-out;
  }

  #body .wrapper-body:hover .wrapper-body-hover-right{
    left: -62%;
    top: 5%;
    transform: rotate(348deg);
  }

  #body .wrapper-body .container-title{
    position: absolute;
    background-color: var(--gold);
    text-transform: uppercase;
  }

  #body .wrapper-body .container-img {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  #body .wrapper-body .container-img img {
    height: 100%;
  }

}

</style>
