-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/weight_unit/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/weight_amount/column


ALTER TABLE "agent_db_app_public".habit_logs 
  ADD COLUMN weight_unit text;

