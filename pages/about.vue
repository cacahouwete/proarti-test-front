<template>
  <div id="about">
    <div id="btn">
      <div class="btn">
        <NuxtLink to="/">retour</NuxtLink>
      </div>
    </div>
    <div class="about-wrapper" v-for="(item, index) in 3" key="index">
      <img :src="require(`~/assets/img/about/about_back${index + 1}.png`)"/>
      <div class="title-wrapper">
        <h2 class="title">{{ about_data[index].title }}</h2>
      </div>
      <p> {{ about_data[index].text }}</p>
    </div>
  </div>

</template>

<script>
import data from 'static/aboute.json'

export default {
  name: "about",
  data() {
    return {
      about_data: data,
      n: 0
    }
  }
}
</script>

<style scoped lang="css">
@media screen and (min-width: 300px) {
  #about {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    width: 100%;
    padding: 1.3rem;
    background-color: var(--color-black);
    color: var(--color-white);
    font-size: var(--xs-font);
  }

  #about .about-wrapper {
    margin-top: 2rem;
    transition: .5s;
    width: 90%;
  }

  #about .about-wrapper .title-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 120px;
    height: 35px;
    background-color: var(--color-white);
    padding: .7rem .6rem;
    color: var(--color-black);
  }

  #about .about-wrapper .title-wrapper h2 {
    text-transform: uppercase;
  }

  #about .about-wrapper img {
    width: 100%;
    object-fit: cover;
  }

}

@media screen and (min-width: 600px) {
  #about .about-wrapper {
    transition: .5s;
    width: 60%;
  }
}
</style>
