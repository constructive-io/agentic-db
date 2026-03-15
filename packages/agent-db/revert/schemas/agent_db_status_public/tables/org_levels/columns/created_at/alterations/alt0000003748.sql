-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/created_at/alterations/alt0000003748


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN created_at DROP DEFAULT;


