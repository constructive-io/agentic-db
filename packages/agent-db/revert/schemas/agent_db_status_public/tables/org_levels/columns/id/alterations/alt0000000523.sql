-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/id/alterations/alt0000000523


ALTER TABLE agent_db_status_public.org_levels 
  ALTER COLUMN id DROP NOT NULL;


