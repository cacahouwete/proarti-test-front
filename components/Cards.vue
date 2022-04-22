<template>
  <div class="card card2">
    <h2>{{ data_user[index].title}}</h2>
    <i class="fas fa-arrow-right"></i>
    <p>{{ data_user[index].job}}</p>
    <div>
      <img :src="require(`~/assets/img/card/${data_user[index].image}`)" alt="">
    </div>
    <button>
    </button>
  </div>
</template>

<script>
import data from "~/static/card_user_data.json"

export default {
  name: "Cards",
  props: ["index"],
  data() {
    return {
      data_user: data,
    }
  }
}
</script>

<style scoped lang="css">

.card {
  position: relative;
  width: 425px;
  height: 200px;
  background-color: #fff;
  overflow: hidden;
  margin-bottom: 4px;
}

.card::before {
  content: "";
  z-index: 99;
  position: absolute;
  top: -10px;
  left: 32px;
  display: block;
  width: 16px;
  height: 16px;
  border-radius: 16px;
  background-color: #E6E5E1;
}

.card::after {
  content: "";
  z-index: 99;
  position: absolute;
  bottom: -10px;
  left: 32px;
  display: block;
  width: 16px;
  height: 16px;
  border-radius: 16px;
  background-color: #E6E5E1;
}

.card ul {
  z-index: 99;
  position: absolute;
  left: 39px;
  top: 5px;
  list-style-type: none;
}

.card ul li {
  width: 2px;
  height: 2px;
  border-radius: 2px;
  margin: 6px 0;
  background-color: #E6E5E1;
}

.card h2 {
  z-index: 99;
  position: absolute;
  bottom: 0;
  right: 130px;
  font-size: 60px;
  font-weight: 700;
  color: #fff;
}

.card .fa-arrow-right {
  z-index: 100;
  position: absolute;
  right: 75px;
  bottom: 25px;
  font-size: 40px;
  cursor: pointer;
}

.card p {
  z-index: 99;
  position: absolute;
  top: 20px;
  right: 40px;
  color: #333;
  opacity: 0.7;
  font-size: 12px;
  letter-spacing: 1px;
  writing-mode: vertical-lr;
  transition: all 0.2s ease;
}

.card .pic {
  z-index: 100;
  width: 360px;
  height: 200px;
  background-image: url("https://images.unsplash.com/photo-1525543907410-b2562b6796d6?ixlib=rb-0.3.5&s=9ff8e5e718a6a40cbd0e1471235912f4&auto=format&fit=crop&w=3452&q=80");
  background-size: 100% 100%;
  filter: grayscale(100%);
}

.card .social {
  position: absolute;
  left: 60px;
  top: 0;
  display: flex;
  justify-content: space-around;
  align-items: center;
  width: 180px;
  height: 64px;
  border-radius: 80px;
}

.card button i {
  font-size: 3rem;
}

.card:hover i {
  opacity: 1;
  transform: scale(1);
}

.card .social i:nth-of-type(1) {
  transition-delay: 0.4s;
}

.card .social i:nth-of-type(2) {
  transition-delay: 0.3s;
}

.card .social i:nth-of-type(3) {
  transition-delay: 0.2s;
}

.card .social i:nth-of-type(4) {
  transition-delay: 0.1s;
}


.card button {
  position: absolute;
  right: 14px;
  bottom: 14px;
  width: 30px;
  height: 30px;
  background-color: #DA4D1D;
  border: none;
  border-radius: 30px;
  cursor: pointer;
  outline: none;
  transition: all 0.3s ease;
  mix-blend-mode: hard-light;
}

.card2 button {
  background-color: #2b26c3;
}

.card:hover button {
  transform: scale(16.5);
}

.card:hover p {
  color: #fff;
}

.card2 .pic {
  background-image: url("https://images.unsplash.com/photo-1528785198459-ec50485704c7?ixlib=rb-0.3.5&s=3a2fc3039516555bbb2e9cd2967bd321&auto=format&fit=crop&w=1537&q=80");
}

.card:hover .pic {
  filter: grayscale(0);
}

.dr {
  position: absolute;
  bottom: 16px;
  right: 16px;
  width: 100px;
}

</style>
