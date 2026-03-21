-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000000921


ALTER TABLE "agentic_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN is_owner DROP NOT NULL;


