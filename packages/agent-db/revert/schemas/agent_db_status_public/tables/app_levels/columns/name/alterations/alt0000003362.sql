-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/name/alterations/alt0000003362


ALTER TABLE "agent_db_status_public".app_levels 
  ALTER COLUMN name DROP NOT NULL;


