-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/entity_id/column


ALTER TABLE agent_db_memberships_public.org_owner_grants 
  DROP COLUMN entity_id RESTRICT;


