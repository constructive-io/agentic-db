-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000000341


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


