-- Revert: schemas/agent_db_app_public/tables/projects/columns/created_at/alterations/alt0000002803


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN created_at DROP NOT NULL;


