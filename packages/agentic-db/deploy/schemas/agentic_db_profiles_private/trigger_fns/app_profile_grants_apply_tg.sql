-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_profile_grants_apply_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE FUNCTION agentic_db_profiles_private.app_profile_grants_apply_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.is_grant IS TRUE AND NEW.profile_id IS NOT NULL THEN
    UPDATE agentic_db_memberships_public.app_memberships SET
    profile_id = NEW.profile_id
    WHERE
      id = NEW.membership_id;
  ELSIF NEW.is_grant IS FALSE THEN
    UPDATE agentic_db_memberships_public.app_memberships SET
    profile_id = NULL
    WHERE
      id = NEW.membership_id;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

