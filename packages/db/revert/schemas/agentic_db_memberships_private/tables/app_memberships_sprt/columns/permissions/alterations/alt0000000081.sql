-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000000081


ALTER TABLE "agentic_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


