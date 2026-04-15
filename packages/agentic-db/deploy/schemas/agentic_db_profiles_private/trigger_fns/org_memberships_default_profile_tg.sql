-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/org_memberships_default_profile_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table


CREATE FUNCTION agentic_db_profiles_private.org_memberships_default_profile_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_default_profile_id uuid;
BEGIN
  IF NEW.profile_id IS NULL THEN
    SELECT id
    FROM agentic_db_profiles_public.org_profiles
    WHERE
      is_default = true AND entity_id = NEW.entity_id
    LIMIT
    1 INTO v_default_profile_id;
    IF FOUND THEN
      SELECT v_default_profile_id INTO NEW.profile_id;
    END IF;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

