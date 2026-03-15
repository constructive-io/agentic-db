-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000000336


ALTER TABLE agent_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN entity_id DROP NOT NULL;


