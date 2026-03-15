-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/updated_by/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN updated_by RESTRICT;


