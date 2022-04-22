<template>
  <div id="project">
    <div id="btn">
      <div class="btn">
        <NuxtLink to="/">retour</NuxtLink>
      </div>
    </div>
    <div>
      <section class="gallery">
        <div class="container">
          <div class="grid">
            <div class="column-xs-12 column-md-4" v-for="(item,index) in 3" :key="index">

              <figure class="img-container">
                <img :src="require(`~/assets/img/${data_project[index].image}`)"/>
                <figcaption class="img-content">
                  <h2 class="title">{{ data_project[index].title}}</h2>
                  <h3 class="category">{{ data_project[index].category}}</h3>
                </figcaption>
                <span class="img-content-hover">
                   <h2 class="title">{{ data_project[index].title}}</h2>
                   <h3 class="category">{{ data_project[index].categoryHover}}</h3>
                </span>
              </figure>
            </div>
            <div class="column-xs-12 column-md-6" v-for="(item, index) in 2" :key="index">
              <figure class="img-container">
                <img :src="require(`~/assets/img/${data_project[index + 3].image}`)"/>
                <figcaption class="img-content">
                  <h2 class="title">{{ data_project[index + 3].title}}</h2>
                  <h3 class="category">{{ data_project[index + 3].category}}</h3>
                </figcaption>
                <span class="img-content-hover">
            <h2 class="title">{{ data_project[index + 3].title}}</h2>
            <h3 class="category">{{ data_project[index + 3].categoryHover}}</h3>
          </span>
              </figure>
            </div>
            <div class="column-xs-12">
              <figure class="img-container">
                <img :src="require(`~/assets/img/${data_project[5].image}`)"/>
                <figcaption class="img-content">
                  <h2 class="title">{{ data_project[5].title}}</h2>
                  <h3 class="category">{{ data_project[5].category}}</h3>
                </figcaption>
                  <span class="img-content-hover">
                    <h2 class="title">{{ data_project[5].title}}</h2>
                    <h3 class="category">{{ data_project[5].categoryHover}}</h3>
                  </span>
              </figure>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script>
import  data_project from "~/static/project_data.json"
  export default {
    name: "project",
    data(){
      return {
        data_project: data_project,
      }
    },
    mounted() {
      this.starAction()
    },
    methods: {
      // add card on hover image
      starAction() {
        const imgContent = document.querySelectorAll('.img-content-hover');

        function showImgContent(e) {
          for (let i = 0; i < imgContent.length; i++) {
            const x = e.clientX;
            const y = e.clientY;
            imgContent[i].style.transform = `translate3d(${x}px, ${y}px, 0)`;
          }
        };
        document.addEventListener('mousemove', showImgContent);
      }
    }
  }
  </script>
<style lang="css">
#project {
  margin-top: 1rem;
  display: flex;
  align-items: center;
  flex-direction: column;
}
</style>

