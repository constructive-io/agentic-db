-- Revert: schemas/agentic_db_memberships_private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000004549


ALTER TABLE agentic_db_memberships_private.org_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


