<template>
  <div class="home">
    <div @mousemove="changeCursor" @click="changImg" id="total-width"></div>
    <div class="wrapper-img" id="wrapper-img">
      <img class="a-img img" :src="require(`~/assets/img/${data_project[number_value].form_a}.png`)" alt=""/>
      <img class="img" :src="require(`~/assets/img/${data_project[number_value].img}.png`)" alt=""/>
      <img class="c-img img" :src="require(`~/assets/img/${data_project[number_value].form_b}.png`)" alt=""/>
      <img class="d-img img" :src="require(`~/assets/img/${data_project[number_value].color}.png`)" alt=""/>
      <div class="wrapper-title">
        <div id="title-home">
          <p class="info-link">
            hover me
          </p>
          <h1 class="title" id="title">
            {{ data_project[number_value].title }}
          </h1>
        </div>
      </div>
    </div>
    <div class="wrapper-text">
      <div class="text">
        <p>{{ data_project[number_value].text }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import data from 'static/home_image_data.json'

export default {
  name: "Home",
  data() {
    return {
      data_project: data,
      number_value: 0,
    }
  },
  methods: {
    // change image on click
    changImg() {
      this.number_value === this.data_project.length - 1 ? this.number_value = 0 : this.number_value++
    },

    // change cursor on hover
    changeCursor(e) {
      let divWidth = document.getElementById("total-width").getBoundingClientRect().width;
      let halfImage = divWidth / 2;
      let xPosition = e.clientX;

      if (xPosition > halfImage) {
        e.target.classList.remove('cursor-prev')
        e.target.classList.add('cursor-next')
      } else {
        e.target.classList.remove('cursor-next')
        e.target.classList.add('cursor-prev')
      }
    },
  }
}
</script>

<style scoped lang="css">

@media screen and (min-width: 300px) {
  .home {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: relative;
  }

  #total-width {
    position: absolute;
    transform: translate(-50%, -50%);
    top: 359px;
    left: 50%;
    width: 100%;
    height: 300px;
    z-index: 5;
  }


  #wrapper-img {
    width: 100%;
    height: 70vh;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  }

  #wrapper-img .a-img,
  #wrapper-img .c-img,
  #wrapper-img .d-img {
    position: absolute;
    transform: translate(-50%, -50%);
    width: 200px;
    opacity: .6;
    left: 16%;
    top: 60%;
    z-index: -2;
  }

  #wrapper-img .c-img {
    left: 70%;
  }

  #wrapper-img .d-img {
    top: 74%;
    left: 50%;
    z-index: 2;
    width: 321px;
  }

  #title-home {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100px;
  }

  #title-home .title {
    position: absolute;
    top: -10%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 5;
  }

  #title-home .info-link {
    position: absolute;
    top: 75%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: var(--xs-font);
  }

  .wrapper-text {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .wrapper-text .text {
    padding: .8rem 1.9rem;
    box-shadow: var(--s-box-shadow);
    width: 80%;
    border-radius: 7px;
  }

}

@media screen and (min-width: 450px) {
  .wrapper-title,
  #wrapper-img,
  .wrapper-text {
    transition: .5s;
    width: 450px;
  }

}

@media screen and (min-width: 550px) {
  .wrapper-text {
    width: 550px;
  }

}

</style>
