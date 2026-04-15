-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_utg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema


CREATE FUNCTION agentic_db_memberships_private.app_memberships_utg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  bitlen int := bit_length(NEW.permissions);
BEGIN
  IF NEW.is_owner IS true THEN
    new.is_admin := true;
    new.is_approved := true;
    new.is_verified := true;
    new.is_disabled := false;
    new.is_banned := false;
  END IF;
  new.is_active := ((NEW.is_approved IS true AND NEW.is_verified IS true) AND NEW.is_disabled IS false) AND NEW.is_banned IS false;
  IF NEW.is_admin IS true OR NEW.is_owner IS true THEN
    new.permissions := lpad('', bitlen::int, '1');
  ELSE
    new.permissions := NEW.granted;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

