-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/constraints/org_profiles_entity_id_fkey/constraint


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  DROP CONSTRAINT org_profiles_entity_id_fkey;


