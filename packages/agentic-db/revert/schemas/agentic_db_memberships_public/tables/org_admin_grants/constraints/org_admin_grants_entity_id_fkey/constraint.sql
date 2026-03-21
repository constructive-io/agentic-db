-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/constraints/org_admin_grants_entity_id_fkey/constraint


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  DROP CONSTRAINT org_admin_grants_entity_id_fkey;


