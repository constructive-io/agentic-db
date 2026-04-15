-- Deploy: schemas/agentic_db_profiles_private/trigger_fns/app_profile_definition_grants_apply_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table


CREATE FUNCTION agentic_db_profiles_private.app_profile_definition_grants_apply_tg() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF NEW.is_grant IS TRUE THEN
    INSERT INTO agentic_db_profiles_public.app_profile_permissions (
      profile_id,
      permission_id
    )
    VALUES
      (NEW.profile_id, NEW.permission_id)
    ON CONFLICT (profile_id, permission_id) DO NOTHING;
  ELSE
    DELETE FROM agentic_db_profiles_public.app_profile_permissions
    WHERE
      profile_id = NEW.profile_id AND permission_id = NEW.permission_id;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

