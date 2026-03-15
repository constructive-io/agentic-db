-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/created_at/alterations/alt0000001901


ALTER TABLE "agent_db_status_public".app_levels 
  ALTER COLUMN created_at DROP DEFAULT;


