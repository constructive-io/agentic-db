-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/updated_at/alterations/alt0000001383


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


