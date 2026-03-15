-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/triggers/org_invites_email_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-invites-private".org_invites_insert_before_tg()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.email IS NOT NULL) THEN 
        PERFORM
            app_jobs.add_job (
                jwt_private.current_database_id(),
                'send-email-link',
                json_build_object(
                    'invite_table', 'org_invites',
                    'invite_type', 2,
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
CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-invites-private".org_invites_insert_after_tg()
RETURNS TRIGGER AS $$
DECLARE
    owner_id uuid;
    membership_exists boolean;
BEGIN
    IF (NEW.email IS NOT NULL) THEN 
        SELECT 
          e.owner_id
            FROM 
                "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails e
                WHERE 
                    e.email = NEW.email
        INTO owner_id;
        IF (FOUND) THEN 
            NEW.receiver_id = owner_id;
            SELECT EXISTS( SELECT 
                        1 
                    FROM 
                        "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships m
                    WHERE 
                        m.actor_id = NEW.receiver_id
                        AND m.entity_id = NEW.entity_id
                    )
            INTO membership_exists;
            IF (membership_exists IS TRUE) THEN 
                RAISE EXCEPTION 'ACCOUNT_EXISTS';
            END IF;
        END IF;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql' SECURITY DEFINER;
CREATE TRIGGER invite_trigger_ensure_email_not_exists BEFORE
INSERT ON
"agent-os-1773550873753-b6c4a3e1-invites-public".org_invites FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-invites-private".org_invites_insert_after_tg ();
CREATE TRIGGER invite_trigger_send_email AFTER
INSERT ON
"agent-os-1773550873753-b6c4a3e1-invites-public".org_invites FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-invites-private".org_invites_insert_before_tg ();

