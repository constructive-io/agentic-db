-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/triggers/invites_email_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-invites-private".invites_insert_before_tg()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.email IS NOT NULL) THEN 
        PERFORM
            app_jobs.add_job (
                jwt_private.current_database_id(),
                'send-email-link',
                json_build_object(
                    'invite_table', 'invites',
                    'invite_type', 1,
                    'email_type', 'invite_email',
                    'email', NEW.email,
                    'sender_id', NEW.sender_id,
                    'invite_token', NEW.invite_token
                )
            );
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;
CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-invites-private".invites_insert_after_tg()
RETURNS TRIGGER AS $$
DECLARE
    email_exists boolean;
BEGIN
    IF (NEW.email IS NOT NULL) THEN 
        SELECT EXISTS( SELECT 
                    1 
                FROM 
                    "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails e
                WHERE 
                    e.email = NEW.email)
        INTO email_exists;
        IF (email_exists IS TRUE) THEN 
            RAISE EXCEPTION 'ACCOUNT_EXISTS';
        END IF;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql' SECURITY DEFINER;
CREATE TRIGGER invite_trigger_ensure_email_not_exists BEFORE
INSERT ON
"agent-os-1773550873753-b6c4a3e1-invites-public".invites FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-invites-private".invites_insert_after_tg ();
CREATE TRIGGER invite_trigger_send_email AFTER
INSERT ON
"agent-os-1773550873753-b6c4a3e1-invites-public".invites FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-invites-private".invites_insert_before_tg ();

