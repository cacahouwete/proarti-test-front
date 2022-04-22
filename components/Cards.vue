<template>
  <div class="container card-bottom-left card">
    <div class="box">
      <div class="top">
        <div class="profile">
          <img src="~/assets/img/profile_picture/profile_icon.png">
        </div>
        <h1 class="title">{{ data_user[index].title}}</h1>
        <h3 class="job">{{ data_user[index].job}}</h3>
      </div>
      <div class="bottom">
        <div class="social-links">
            <div><img src="~/assets/icon/instagram.png"></div>
            <div><img src="~/assets/icon/linkedin.png"></div>
            <div><img src="~/assets/icon/twitter.png"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import data from "~/static/card_user_data.json"
export default {
  name: "Cards",
  props:["index"],
  data(){
    return{
      data_user:data,
    }
  }
}
</script>

<style scoped lang="css">
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
}
.container .box {
  width: 170px;
  height: 100%;
  border-radius: 10px;
  background-color: white;
  position: relative;
  z-index: 3;
}
.container .box .top {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 70%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  border-left:1px solid var(--color_gray) ;
  border-right:1px solid var(--color_gray) ;
  border-top:1px solid var(--color_gray) ;
}
.container .box .top .profile, .container .box .top .title, .container .box .top .job {
  margin: 5px;
}
.container .box .top .profile {
  width: 50px;
  height: 50px;
  border: 1px solid var(--color_black);
  box-shadow: 0px 3px 5px rgb(0 0 0 / 20%);
  border-radius: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.container .box .top .profile img{
  width: 96%;
}
.container .box .top .title {
  font-size: 18px;
  font-weight: 700;
}
.container .box .top .job {
  font-size: 14px;
  font-weight: 400;
}
.container .box .bottom {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-content: center;
  height: 30%;
  border-left:1px solid var(--color_gray) ;
  border-right:1px solid var(--color_gray) ;
  border-bottom:1px solid var(--color_gray) ;
  background-color: #F5F5F5;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;

}
.bottom .social-links{
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  width: 100%;
  height: 100%;
}


</style>
