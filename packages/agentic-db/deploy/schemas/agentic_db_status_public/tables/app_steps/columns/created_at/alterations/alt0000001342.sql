-- Deploy: schemas/agentic_db_status_public/tables/app_steps/columns/created_at/alterations/alt0000001342
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_status_public/tables/app_steps/columns/created_at/column


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN created_at SET DEFAULT now();

