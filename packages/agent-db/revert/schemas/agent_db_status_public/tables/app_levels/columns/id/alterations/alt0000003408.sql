-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/id/alterations/alt0000003408


ALTER TABLE "agent_db_status_public".app_levels 
  ALTER COLUMN id DROP NOT NULL;


