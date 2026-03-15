-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/updated_at/alterations/alt0000003416


ALTER TABLE "agent_db_status_public".app_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


