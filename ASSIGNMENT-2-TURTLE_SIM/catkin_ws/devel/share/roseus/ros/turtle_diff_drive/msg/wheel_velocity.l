;; Auto-generated. Do not edit!


(when (boundp 'turtle_diff_drive::wheel_velocity)
  (if (not (find-package "TURTLE_DIFF_DRIVE"))
    (make-package "TURTLE_DIFF_DRIVE"))
  (shadow 'wheel_velocity (find-package "TURTLE_DIFF_DRIVE")))
(unless (find-package "TURTLE_DIFF_DRIVE::WHEEL_VELOCITY")
  (make-package "TURTLE_DIFF_DRIVE::WHEEL_VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude wheel_velocity.msg.html


(defclass turtle_diff_drive::wheel_velocity
  :super ros::object
  :slots (_omega_l _omega_r ))

(defmethod turtle_diff_drive::wheel_velocity
  (:init
   (&key
    ((:omega_l __omega_l) 0.0)
    ((:omega_r __omega_r) 0.0)
    )
   (send-super :init)
   (setq _omega_l (float __omega_l))
   (setq _omega_r (float __omega_r))
   self)
  (:omega_l
   (&optional __omega_l)
   (if __omega_l (setq _omega_l __omega_l)) _omega_l)
  (:omega_r
   (&optional __omega_r)
   (if __omega_r (setq _omega_r __omega_r)) _omega_r)
  (:serialization-length
   ()
   (+
    ;; float64 _omega_l
    8
    ;; float64 _omega_r
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _omega_l
       (sys::poke _omega_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega_r
       (sys::poke _omega_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _omega_l
     (setq _omega_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega_r
     (setq _omega_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get turtle_diff_drive::wheel_velocity :md5sum-) "060a9c3aa2e2b6228526d91e96852741")
(setf (get turtle_diff_drive::wheel_velocity :datatype-) "turtle_diff_drive/wheel_velocity")
(setf (get turtle_diff_drive::wheel_velocity :definition-)
      "float64 omega_l
float64 omega_r

")



(provide :turtle_diff_drive/wheel_velocity "060a9c3aa2e2b6228526d91e96852741")


