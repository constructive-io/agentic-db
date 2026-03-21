-- Revert: schemas/agentic_db_app_public/tables/habit_logs/columns/weight_amount/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  DROP COLUMN weight_amount RESTRICT;


