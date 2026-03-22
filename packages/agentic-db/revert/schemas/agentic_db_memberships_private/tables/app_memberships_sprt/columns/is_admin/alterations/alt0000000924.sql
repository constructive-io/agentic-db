-- Revert: schemas/agentic_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000000924


ALTER TABLE "agentic_db_memberships_private".app_memberships_sprt 
  ALTER COLUMN is_admin DROP NOT NULL;


