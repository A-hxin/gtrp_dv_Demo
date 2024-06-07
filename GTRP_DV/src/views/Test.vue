<script setup>
import RightName from "@/components/RightName.vue";
</script>

<style scoped>

.minBox {
  width: 98%;
  height: 88vh;
  margin: 0 auto;
  background-color: rgba(255, 255, 255, 0.07); /* 毛玻璃效果颜色 */
  backdrop-filter: blur(10px); /* 毛玻璃效果 */
  text-align: center;
  border-radius: 20px; /* 设置圆角 */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15); /* 设置阴影 */
}

.mBox {
  //border: 1px solid orange;
  margin-top: 1rem;
  height: 30vh;
  background-color: rgba(255, 255, 255, 0.07); /* 毛玻璃效果颜色 */
  backdrop-filter: blur(10px); /* 毛玻璃效果 */
  border-radius: 20px; /* 设置圆角 */
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.09); /* 设置阴影 */
}

.mBox:hover {
  box-shadow: 0 0 20px rgba(220, 103, 255, 0.36);
}

/*客户*/
.userBox {
  height: 14.5vh;
}

.ex5{
  height: 27vh;
}
</style>


<template>
  <main class="minBox">
    <el-row :gutter="20" class="paddBox">
      <el-col :span="4">
        <div class="mBox">1</div>
      </el-col>
      <el-col :span="4">
        <div class="mBox">1</div>
      </el-col>

      <el-col :span="4">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="5">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="4">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
        <el-row :gutter="3">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="3">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">1</div>
          </el-col>
        </el-row>
      </el-col>
    </el-row>

    <el-row :gutter="20" class="paddBox">
      <el-col :span="6">
        <div class="mBox ex5">1</div>
      </el-col>

      <el-col :span="5">
        <div class="mBox ex5">1</div>
      </el-col>

      <el-col :span="5">
        <div class="mBox ex5">1</div>
      </el-col>
      <el-col :span="8">
        <div class="mBox ex5">1</div>
      </el-col>
    </el-row>

    <el-row :gutter="20" class="paddBox">
      <el-col :span="6">
        <div class="mBox ex5">1</div>
      </el-col>

      <el-col :span="10">
        <div class="mBox ex5">1</div>
      </el-col>

      <el-col :span="8">
        <div class="mBox ex5">1</div>
      </el-col>
    </el-row>




  </main>
  <RightName/>
</template>





