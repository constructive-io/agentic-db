-- Revert: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/entity_id/alterations/alt0000001660


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN entity_id DROP NOT NULL;


