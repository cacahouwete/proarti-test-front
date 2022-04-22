<template>
  <div class="home">
    <div @mousemove="changeCursor" @click="changImg" id="totalWidth"></div>
    <div class="wrapper_img" id="wrapper_img">
      <img class="a_img img" :src="require(`~/assets/img/${data_project[number_value].form_a}.png`)" alt=""/>
      <img class="img" :src="require(`~/assets/img/${data_project[number_value].img}.png`)" alt=""/>
      <img class="c_img img" :src="require(`~/assets/img/${data_project[number_value].form_b}.png`)" alt=""/>
      <img class="d_img img" :src="require(`~/assets/img/${data_project[number_value].color}.png`)" alt=""/>
      <div class="wrapper_title">
        <div id="title_home">
          <p class="info_link">
            hover me
          </p>
          <h1 class="title" id="title">
            {{ data_project[number_value].title}}
          </h1>
        </div>
      </div>
    </div>
    <div class="wrapper_text">
      <div class="text">
        <p>{{ data_project[number_value].text}}</p>
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
      let divWidth = document.getElementById("totalWidth").getBoundingClientRect().width;
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

  #totalWidth {
    position: absolute;
    transform: translate(-50%, -50%);
    top: 359px;
    left: 50%;
    width: 100%;
    height: 300px;
    z-index: 5;
  }


  #wrapper_img {
    width: 100%;
    height: 70vh;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  }

  #wrapper_img .a_img,
  #wrapper_img .b_img,
  #wrapper_img .c_img,
  #wrapper_img .d_img{
    position: absolute;
    transform: translate(-50%,-50%);
    width: 200px;
    opacity: .6;
    left: 16%;
    top: 60%;
    z-index: -2;
  }
  #wrapper_img .b_img {z-index: 4;}
  #wrapper_img .c_img {left: 70%;}
  #wrapper_img .d_img {
    top: 74%;
    left: 50%;
    z-index: 2;
    width: 321px;
  }



  #title_home {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100px;
  }

  #title_home .title {
    position: absolute;
    top: -10%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 5;
  }

  #title_home .info_link {
    position: absolute;
    top: 75%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: var(--xs_font);
  }

  .wrapper_text {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .wrapper_text .text{
    padding: .8rem 1.9rem;
    box-shadow: var(--S_box-shadow);
    width: 80%;
    border-radius: 7px;
  }

}

@media screen and (min-width: 450px) {

  .wrapper_title,
  #wrapper_img,
  .wrapper_text {
    transition: .5s;
    width: 450px;
  }

}

@media screen and (min-width: 550px) {

  .wrapper_text {
    width: 550px;
  }

}

</style>
