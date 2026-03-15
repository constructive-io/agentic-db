-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/granted/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN granted RESTRICT;


