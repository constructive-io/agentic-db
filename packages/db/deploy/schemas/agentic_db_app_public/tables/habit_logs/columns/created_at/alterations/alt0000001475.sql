-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/created_at/alterations/alt0000001475
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".habit_logs 
    ALTER COLUMN created_at SET DEFAULT now();

