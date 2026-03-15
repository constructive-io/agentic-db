-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/entity_id/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN entity_id RESTRICT;


