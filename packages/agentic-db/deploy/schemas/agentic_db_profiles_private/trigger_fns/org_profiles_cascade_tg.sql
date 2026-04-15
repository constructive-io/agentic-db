-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/org_profiles_cascade_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


CREATE FUNCTION agentic_db_profiles_private.org_profiles_cascade_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF OLD.permissions IS DISTINCT FROM NEW.permissions THEN
    UPDATE agentic_db_memberships_public.org_memberships SET
    profile_id = profile_id
    WHERE
      profile_id = NEW.id;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

