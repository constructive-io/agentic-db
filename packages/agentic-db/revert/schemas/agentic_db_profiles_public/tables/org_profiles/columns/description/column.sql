-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/description/column


ALTER TABLE agentic_db_profiles_public.org_profiles 
  DROP COLUMN description RESTRICT;


