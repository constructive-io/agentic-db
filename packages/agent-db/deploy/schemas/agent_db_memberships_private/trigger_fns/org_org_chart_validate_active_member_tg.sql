-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_org_chart_validate_active_member_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema


CREATE FUNCTION agent_db_memberships_private.org_org_chart_validate_active_member_tg() RETURNS TRIGGER AS $_PGFN_$

                DECLARE
                    v_is_active boolean;
                BEGIN
                    -- Check if child_id is an active member of the entity
                    SELECT (m.is_approved IS TRUE AND m.is_disabled IS FALSE AND m.is_banned IS FALSE)
                    FROM agent_db_memberships_public.org_memberships m
                    WHERE m.entity_id = NEW.entity_id
                        AND m.actor_id = NEW.child_id
                    INTO v_is_active;

                    IF (v_is_active IS NOT TRUE) THEN
                        RAISE EXCEPTION 'HIERARCHY_INACTIVE_MEMBER: Cannot add user % to hierarchy - user must be an active member of the organization first',
                            NEW.child_id;
                    END IF;

                    -- Also check parent_id if provided
                    IF (NEW.parent_id IS NOT NULL) THEN
                        SELECT (m.is_approved IS TRUE AND m.is_disabled IS FALSE AND m.is_banned IS FALSE)
                        FROM agent_db_memberships_public.org_memberships m
                        WHERE m.entity_id = NEW.entity_id
                            AND m.actor_id = NEW.parent_id
                        INTO v_is_active;

                        IF (v_is_active IS NOT TRUE) THEN
                            RAISE EXCEPTION 'HIERARCHY_INACTIVE_MEMBER: Cannot set user % as parent - user must be an active member of the organization',
                                NEW.parent_id;
                        END IF;
                    END IF;

                    RETURN NEW;
                END;
            
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

