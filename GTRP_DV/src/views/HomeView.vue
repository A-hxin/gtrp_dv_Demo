<script setup>
import RightName from "@/components/RightName.vue";
import TitleName from "@/components/TitleName.vue";
import MonthlySales from "@/components/Sales/MonthlySales.vue";
import OrderQuantity from "@/components/AnalysisData/OrderQuantity.vue";
import PageViews from "@/components/AnalysisData/PageViews.vue";
import UserBehavior from "@/components/UserAnalysis/UserBehavior.vue";
import CustomerSatisfaction from "@/components/UserAnalysis/CustomerSatisfaction.vue";
import PaymentMethod from "@/components/UserAnalysis/PaymentMethod.vue";
import BestSellingProducts from "@/components/UserAnalysis/BestSellingProducts.vue";
import FeedbackEvaluation from "@/components/UserAnalysis/FeedbackEvaluation.vue";
import MonthOverMonth from "@/components/AnalysisData/MonthOverMonth.vue";
import YearOverYear from "@/components/AnalysisData/YearOverYear.vue";
import RepurchaseRate from "@/components/AnalysisData/RepurchaseRate.vue";
import CustomerServiceRFM from "@/components/UserAnalysis/CustomerServiceRFM.vue";
import CompletedOrders from "@/components/Sales/CompletedOrders.vue";
import CategoryInventory from "@/components/Warehouse/CategoryInventory.vue";
import CategorySales from "@/components/Sales/CategorySales.vue";
import SalesChannelAnalysis from "@/components/Sales/SalesChannelAnalysis.vue";
import CurrentInventory from "@/components/Warehouse/CurrentInventory.vue";
import WeeklySales from "@/components/Sales/WeeklySales.vue";
import MouthMoney from "@/components/Warehouse/MouthMoney.vue";

</script>

<template>
  <main class="minBox">
    <el-row :gutter="20" class="paddBox">
      <el-col :span="4">
        <div class="mBox">
          <TitleName text="当前库存"/>
          <CategoryInventory/>
        </div>
      </el-col>
      <el-col :span="4">
        <div class="mBox">
          <TitleName text="用户行为"/>
          <UserBehavior/>

        </div>
      </el-col>

      <el-col :span="4">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">
              <TitleName text="客户满意度"/>
              <CustomerSatisfaction/>

            </div>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">
              <TitleName text="畅销产品"/>
              <BestSellingProducts/>

            </div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="5">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">
              <TitleName text="常用支付方式"/>
              <PaymentMethod/>
            </div>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userBox">
              <TitleName text="评价与反馈"/>
              <FeedbackEvaluation/>
            </div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="4">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="当月销售额"/>
              <MonthlySales/>
            </div>
          </el-col>
        </el-row>

        <el-row :gutter="3">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="环比变化"/>
              <MonthOverMonth/>
            </div>
          </el-col>
        </el-row>

        <el-row :gutter="3">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="同比变化"/>
              <YearOverYear/>
            </div>
          </el-col>
        </el-row>
      </el-col>

      <el-col :span="3">
        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="访问量"/>
              <PageViews/>
            </div>
          </el-col>
        </el-row>

        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="下单量"/>
              <OrderQuantity/>
            </div>
          </el-col>
        </el-row>

        <el-row :gutter="5">
          <el-col :span="24">
            <div class="mBox userData">
              <TitleName text="复购率"/>
              <RepurchaseRate/>
            </div>
          </el-col>
        </el-row>
      </el-col>
    </el-row>

    <el-row :gutter="20" class="paddBox">
      <el-col :span="6">
        <div class="mBox ex5">
          <TitleName text="客户分类(RFM分析)"/>
          <CustomerServiceRFM/>
        </div>
      </el-col>

      <el-col :span="4">
        <div class="mBox ex5">
          <TitleName text="销售渠道分析"/><SalesChannelAnalysis/>
        </div>
      </el-col>

      <el-col :span="6">
        <div class="mBox ex5"><TitleName text="各类商品库存"/><CurrentInventory/></div>
      </el-col>
      <el-col :span="8">
        <div class="mBox ex5"><TitleName text="月销售额"/><MouthMoney/></div>
      </el-col>
    </el-row>

    <el-row :gutter="20" class="paddBox">
      <el-col :span="6">
        <div class="mBox ex5"><TitleName text="各类销售额"/><CategorySales/></div>
      </el-col>

      <el-col :span="10">
        <div class="mBox ex5"><TitleName text="成交订单"/><CompletedOrders/></div>
      </el-col>

      <el-col :span="8">
        <div class="mBox ex5"><TitleName text="周销售额"/><WeeklySales/></div>
      </el-col>
    </el-row>




  </main>
  <RightName/>
</template>



<style scoped>

</style>

