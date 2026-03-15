-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/id/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN id RESTRICT;


